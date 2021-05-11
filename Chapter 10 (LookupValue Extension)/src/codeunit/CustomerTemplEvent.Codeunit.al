codeunit 50005 "CustomerTemplEvent"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Customer Templ. Mgt.", 'OnApplyTemplateOnBeforeCustomerModify', '', false, false)]
    local procedure OnApplyTemplateOnBeforeCustomerModify(var Customer: Record Customer; CustomerTempl: Record "Customer Templ.");
    begin
        Customer."Lookup Value Code" := CustomerTempl."Lookup Value Code";
    end;

}