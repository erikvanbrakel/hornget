﻿install rhino.dsl:
    get_from git("git://github.com/lorenzomelato/rhino-commons.git")
    build_with psake, buildfile("default.ps1"), FrameworkVersion35    
	with:
		tasks Compile    

build_root_dir "build"
shared_library "SharedLibs"

dependencies:
    depend "castle.tools"                 >> "Castle.Core"
    depend "castle.tools"                 >> "Castle.DynamicProxy"
    depend "castle.tools"                 >> "Castle.DynamicProxy2"
    depend "castle.windsor"               >> "Castle.MicroKernel"
    depend "castle.windsor"               >> "Castle.Windsor"
    depend "castle.services"              >> "Castle.Services.Transaction"
    depend "castle.services"              >> "Castle.Services.Logging.Log4netIntegration"
    depend "castle.services"              >> "Castle.Services.Logging.NLogIntegration"
    depend "castle.components"            >> "Castle.Components.Validator"
    depend "castle.activerecord"          >> "Castle.ActiveRecord"
    depend "castle.facilities"            >> "Castle.Facilities.AutomaticTransactionManagement"
    depend "nhibernate.caches"            >> "NHibernate.Caches.SysCache"
    depend "nhibernate"          >> "2.1" >> "NHibernate"     
    depend "nhibernate"          >> "2.1" >> "NHibernate.ByteCode.Castle"
    depend "nhibernate"          >> "2.1" >> "Iesi.Collections"
    depend "rhino.dsl"   >> "Rhino.Dsl"
    depend "rhino.dsl"   >> "Boo.Lang"
    depend "rhino.dsl"   >> "Boo.Lang.CodeDom"
    depend "rhino.dsl"   >> "Boo.Lang.Compiler"
    depend "rhino.dsl"   >> "Boo.Lang.dll"
    depend "rhino.dsl"   >> "Boo.Lang.Extensions"
    depend "rhino.dsl"   >> "Boo.Lang.Interpreter"
    depend "rhino.dsl"   >> "Boo.Lang.Parser"
    depend "rhino.dsl"   >> "Boo.Lang.PatternMatching"
    depend "rhino.dsl"   >> "Boo.Lang.Useful"

package.category = "Frameworks"
package.description = "Support and extension for many advance usecases"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://github.com/lorenzomelato/rhino-commons"
package.name = "Rhino.Dsl"
package.notes = ""