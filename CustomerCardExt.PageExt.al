pageextension 50104 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addafter("General")
        {
            part(CustomerReminders; "Customer Reminders Factbox")
            {
                ApplicationArea = All;
                /*The field Customer No. from the Factbox (source table Reminder/Fin. Charge Entry) 
                can be linked with the field No. from the Customer table (source table for the Customer Card page).*/
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