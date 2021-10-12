package generator

import (
	"fmt"

	"android/soong/android"
)

func protonExpandVariables(ctx android.ModuleContext, in string) string {
	protonVars := ctx.Config().VendorConfig("protonVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if protonVars.IsSet(name) {
			return protonVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
