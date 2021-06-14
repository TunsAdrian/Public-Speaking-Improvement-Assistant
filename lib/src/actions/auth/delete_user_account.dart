part of auth_actions;

@freezed
abstract class DeleteUserAccount with _$DeleteUserAccount implements AppAction {
  const factory DeleteUserAccount(ActionResponse response) = DeleteUserAccount$;

  const factory DeleteUserAccount.successful() = DeleteUserAccountSuccessful;

  @Implements(ErrorAction)
  const factory DeleteUserAccount.error(Object error) = DeleteUserAccountError;
}
