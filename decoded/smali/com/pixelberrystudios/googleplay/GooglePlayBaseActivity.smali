.class public abstract Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/pixelberrystudios/googleplay/b;


# static fields
.field public static final CLIENT_ALL:I = 0x3

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2


# instance fields
.field protected a:Lcom/pixelberrystudios/googleplay/a;

.field protected b:I

.field protected c:Z

.field protected d:Z

.field private e:Lcom/amazon/ags/api/AmazonGamesClient;

.field private f:[Ljava/lang/String;

.field private g:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b:I

    .line 89
    iput-boolean v1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->c:Z

    .line 98
    iput-boolean v1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->g:Z

    .line 103
    new-instance v0, Lcom/pixelberrystudios/googleplay/a;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/googleplay/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    .line 104
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b:I

    .line 89
    iput-boolean v1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->c:Z

    .line 98
    iput-boolean v1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->g:Z

    .line 115
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a(I[Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;)Lcom/amazon/ags/api/AmazonGamesClient;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->e:Lcom/amazon/ags/api/AmazonGamesClient;

    return-object v0
.end method

.method static synthetic a(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/api/AmazonGamesClient;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->e:Lcom/amazon/ags/api/AmazonGamesClient;

    return-object p1
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    return-void
.end method


# virtual methods
.method protected varargs a(I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b:I

    .line 135
    iput-object p2, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->f:[Ljava/lang/String;

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/pixelberrystudios/googleplay/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/pixelberrystudios/googleplay/e;-><init>(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pixelberrystudios/googleplay/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 312
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "refreshSignin() called while amazon build"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/pixelberrystudios/googleplay/a;->a(Landroid/app/Activity;Z)V

    .line 276
    return-void
.end method

.method public d()Lcom/google/android/gms/common/api/n;
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getGamesClient() called while amazon build"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/a;->a()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "isSignedIn() called while amazon build"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/a;->b()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "beginUserInitiatedSignIn() called while amazon build"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/a;->g()V

    .line 297
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "signOut() called while amazon build"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/a;->e()V

    .line 304
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "hasSignInError() called while amazon build"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/a;->c()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "isUserInitiated() called while amazon build"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    iget-boolean v0, v0, Lcom/pixelberrystudios/googleplay/a;->g:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->g:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pixelberrystudios/googleplay/a;->a(IILandroid/content/Intent;)V

    .line 243
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance v0, Lcom/pixelberrystudios/googleplay/a;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/googleplay/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    .line 149
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 154
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "IsAmazonBuild"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AMAZON: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b(Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-nez v0, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->c:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    iget-boolean v1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->c:Z

    const-string/jumbo v2, "GooglePlayBaseActivity"

    invoke-virtual {v0, v1, v2}, Lcom/pixelberrystudios/googleplay/a;->a(ZLjava/lang/String;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    iget v1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b:I

    iget-object v2, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->f:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/pixelberrystudios/googleplay/a;->a(Lcom/pixelberrystudios/googleplay/b;I[Ljava/lang/String;)V

    .line 167
    :cond_1
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->e:Lcom/amazon/ags/api/AmazonGamesClient;

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->release()V

    .line 234
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 235
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->e:Lcom/amazon/ags/api/AmazonGamesClient;

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->release()V

    .line 227
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 247
    sget v1, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->LAUNCH_PERMISSIONS_REQUEST:I

    if-ne p1, v1, :cond_1

    .line 248
    iput-boolean v4, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->g:Z

    .line 261
    :cond_0
    :goto_0
    sget-object v1, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->PERMISSIONS_PREFS:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 265
    array-length v2, p2

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p2, v0

    .line 266
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_1
    sget v1, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->GC_PERMISSIONS_REQUEST:I

    if-ne p1, v1, :cond_2

    .line 250
    invoke-static {p2, p3}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->areAllPermissionsGranted([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->signIn()V

    goto :goto_0

    .line 254
    :cond_2
    sget v1, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->HELPSHIFT_PERMISSIONS_REQUEST:I

    if-ne p1, v1, :cond_0

    .line 255
    invoke-static {p2, p3}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->areAllPermissionsGranted([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->showSupportWithReportAndResponses()V

    goto :goto_0

    .line 268
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 173
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesFeature;->Achievements:Lcom/amazon/ags/api/AmazonGamesFeature;

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesFeature;->Leaderboards:Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "Attempting to initialize AmazonGamesClient"

    invoke-static {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/pixelberrystudios/googleplay/d;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/googleplay/d;-><init>(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;)V

    invoke-static {p0, v1, v0}, Lcom/amazon/ags/api/AmazonGamesClient;->initialize(Landroid/app/Activity;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)V

    .line 198
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 203
    const-string/jumbo v0, "onStart"

    invoke-static {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b(Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    iget-boolean v1, v1, Lcom/pixelberrystudios/googleplay/a;->g:Z

    invoke-virtual {v0, p0, v1}, Lcom/pixelberrystudios/googleplay/a;->a(Landroid/app/Activity;Z)V

    .line 211
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 216
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d:Z

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a:Lcom/pixelberrystudios/googleplay/a;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/a;->d()V

    .line 219
    :cond_0
    return-void
.end method
