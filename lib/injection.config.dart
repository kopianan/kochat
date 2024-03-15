// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i17;
import 'application/authentication/cubit/authentication_cubit.dart' as _i3;
import 'application/chat/chat_data_cubit.dart' as _i4;
import 'application/friend/friend_cubit.dart' as _i15;
import 'application/room/room_cubit.dart' as _i16;
import 'domain/auth/auth_repository.dart' as _i13;
import 'domain/friend/friend_repository.dart' as _i7;
import 'domain/room/room_repository.dart' as _i11;
import 'infrastructure/auth/auth_datasoure.dart' as _i14;
import 'infrastructure/core/fb_injectable_module.dart' as _i18;
import 'infrastructure/friend/friend_datasource.dart' as _i8;
import 'infrastructure/room/room_datasource.dart' as _i12;
import 'presentation/routes/kopi_router.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.AuthenticationCubit>(() => _i3.AuthenticationCubit());
    gh.factory<_i4.ChatDataCubit>(() => _i4.ChatDataCubit());
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.singleton<_i6.FirebaseChatCore>(
        () => firebaseInjectableModule.fbChatCore);
    gh.singleton<_i7.FriendRepository>(
        () => _i8.FriendDatasource(gh<_i6.FirebaseChatCore>()));
    gh.lazySingleton<_i9.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.singleton<_i10.KopiRouter>(() => _i10.KopiRouter());
    gh.singleton<_i11.RoomRepository>(
        () => _i12.RoomDatasource(gh<_i6.FirebaseChatCore>()));
    gh.singleton<_i13.AuthRepository>(() => _i14.AuthDatasoure(
          gh<_i5.FirebaseAuth>(),
          gh<_i6.FirebaseChatCore>(),
          gh<_i9.GoogleSignIn>(),
        ));
    gh.factory<_i15.FriendCubit>(
        () => _i15.FriendCubit(gh<_i7.FriendRepository>()));
    gh.factory<_i16.RoomCubit>(() => _i16.RoomCubit(gh<_i11.RoomRepository>()));
    gh.factory<_i17.AuthCubit>(() => _i17.AuthCubit(gh<_i13.AuthRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
