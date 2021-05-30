part of auth_actions;

@freezed
abstract class GetCurrentUser with _$GetCurrentUser implements AppAction {
  const factory GetCurrentUser() = GetCurrentUser$;

  const factory GetCurrentUser.successful(@nullable AppUser user) = GetCurrentUserSuccessful;

  @Implements(ErrorAction)
  const factory GetCurrentUser.error(Object error) = GetCurrentUserError;
}
