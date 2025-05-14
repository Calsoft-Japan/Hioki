tableextension 50001 ItemExt extends Item
{//CS 2025/4/22 FDD004 Table Ext for add Field to Item Table by Bobby
    fields
    {
        field(50000; "HS Code"; Code[20])
        {
            ToolTip = 'Specifies the HS Code for the Item.';
        }

    }
}

