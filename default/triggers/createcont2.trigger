trigger createcont2 on Account (after insert) {
    CreateAccountandContactHandler.createAccountAndContact(Trigger.New);
}