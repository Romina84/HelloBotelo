pageextension 50102 "Customer Ledger Entries Ext" extends "Customer Ledger Entries"
{
    layout
    {
        addfirst(factboxes)
        {
            part(CustomerRemindersFactbox; "Customer Reminders Factbox")
            {
                ApplicationArea = All;
                /* The field Customer Entry No. from the factbox (source table Reminder/Fin. Charge Entry)
                 can be linked with the field Entry No. from the Customer Ledger Entry table (source table for the Customer Ledger Entries page).*/
                SubPageLink = "Customer Entry No." = field("Entry No.");
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}