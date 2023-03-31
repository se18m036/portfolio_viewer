Java.perform(function(){
    console.log("\nfreeRASP detection bypass with Frida");
    var target = Java.use('l0.d');  // obfuscated class name must be updated

    console.log("\nHijacking freeRASP detection started");
    target.j.overload('java.lang.String').implementation = function(threat){
        console.log(`Bypassing ${threat}`)
        return;
    };
    console.log('\nFrida script registered');
});
