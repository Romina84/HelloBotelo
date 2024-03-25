pageextension 50103 "Customer List Ext" extends "Customer List"
{
    layout
    {
        addfirst(factboxes)
        {
            part(CustomerRemindersFactbox; "Customer Reminders Factbox")
            {
                ApplicationArea = All;
                /* The field Customer No. from the Factbox (source table Reminder/Fin. Charge Entry) 
                can be linked with the field No. from the Customer table (source table for the Customer List page).*/
                SubPageLink = "Customer No." = field("No.");

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