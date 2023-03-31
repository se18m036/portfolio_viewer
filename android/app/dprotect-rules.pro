# Arithmetic Obfuscation
#-obfuscate-arithmetic,low class dprotect.examples.**
#-obfuscate-arithmetic,high,skipfloat class dprotect.internal.**

# Strings Obfuscation
#-obfuscate-strings class dprotect.examples.**
#-obfuscate-strings class dprotect.internal.CheckPassword {
#    public static java.lang.String getPassword();
#    public static java.lang.String getLogin();
#
#    private static java.lang.String KEY;
#}

# Control-flow obfuscation
#-obfuscate-control-flow class dprotect.internal.api.**

# Constants Obfuscation
#-obfuscate-constants class dprotect.internal.api.Enum {
#  *;
#}
#-obfuscate-control-flow class design.codeux.biometric_storage.** {
#  *;
#}

#-obfuscate-constants class design.codeux.biometric_storage.** {
#  *;
#}
#
-keepclassmembernames public enum design.codeux.biometric_storage.**{
    *;
}
-obfuscate-strings class design.codeux.biometric_storage.** {
  *;
}

-obfuscate-arithmetic,high,skipfloat class dev.koller.portfolio_viewer.MainActivity { *; }
-obfuscate-strings class dev.koller.portfolio_viewer.MainActivity { *; }
-obfuscate-control-flow class dev.koller.portfolio_viewer.MainActivity { *; }
