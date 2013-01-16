using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using Caspar.ResourceProviders;

namespace Caspar.ModelProviders
{
    public class LocalizableDataAnnotationsModelMetadataProvider : DataAnnotationsModelMetadataProvider
    {
        public LocalizableDataAnnotationsModelMetadataProvider()
            : base()
        {
        }

        protected override ModelMetadata CreateMetadata(IEnumerable<Attribute> attributes, Type containerType, Func<object> modelAccessor, Type modelType, string propertyName)
        {
            // invoke the base method but skip the DisplayAttribute since it will use resource internally
            var attributesWithoutDisplay = attributes.Where(a => a.GetType() != typeof(DisplayAttribute));
            var metadata = base.CreateMetadata(attributesWithoutDisplay, containerType, modelAccessor, modelType, propertyName);
            // retrieve the DisplayAttribute
            var display = attributes.OfType<DisplayAttribute>().FirstOrDefault();
            if (display != null)
            {
                var source = LocalizationResourceProvider.Current;
                metadata.DisplayName = source.GetString(display.Name);
                metadata.Description = source.GetString(display.Description);
                metadata.ShortDisplayName = source.GetString(display.ShortName);
                metadata.Watermark = source.GetString(display.Prompt);
                metadata.Order = display.GetOrder() ?? ModelMetadata.DefaultOrder;
            }
            return metadata;
        }
    }
}
