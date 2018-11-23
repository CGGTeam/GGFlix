# GGFlix

### SqlClient missing?

1. check Bin pour `System.Data.SqlClient.dll`
2. right-click solution > restore nuget packages
3. check Bin pour `System.Data.SqlClient.dll`
4. Si l'erreur persist, manage nuget packages > uninstall/reinstall `System.Data.SqlClient`

### Must add netstandard?

```xml
<compilation debug="true" targetFramework="4.6.1">
  <assemblies>
    <add assembly="netstandard, Version=2.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51"/>
  </assemblies>
</compilation>
```
