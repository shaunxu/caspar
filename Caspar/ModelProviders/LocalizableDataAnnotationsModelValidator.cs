using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using Caspar.ResourceProviders;

namespace Caspar.ModelProviders
{
    public class LocalizableDataAnnotationsModelValidator : ModelValidator
    {
        private ModelValidator _innerValidator;
        private ModelMetadata _metadata;

        public LocalizableDataAnnotationsModelValidator(ModelValidator innerValidator, ModelMetadata metadata, ControllerContext controllerContext)
            : base(metadata, controllerContext)
        {
            _innerValidator = innerValidator;
            _metadata = metadata;
        }

        public override IEnumerable<ModelValidationResult> Validate(object container)
        {
            // execute the inner validation which doesn't have localization
            var results = _innerValidator.Validate(container);
            // convert the error message (which should be the localization resource key) to the localized value through the ILocalizationResourceProvider
            var source = LocalizationResourceProvider.Current;
            return results.Select((result) =>
            {
                var key = result.Message;
                var message = source.GetString(key);
                return new ModelValidationResult() { Message = string.Format(message, _metadata.DisplayName) };
            });
        }
    }
}
