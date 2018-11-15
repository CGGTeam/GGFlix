using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;


[System.AttributeUsage(System.AttributeTargets.Property)]
public class ColumnMapping : System.Attribute
{
    public string RowName { get; }

    public ColumnMapping([CallerMemberName] string rowName = "")
    {
        this.RowName = rowName;
    }
}