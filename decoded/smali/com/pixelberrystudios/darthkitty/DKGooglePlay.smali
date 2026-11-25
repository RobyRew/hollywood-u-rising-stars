.class public Lcom/pixelberrystudios/darthkitty/DKGooglePlay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HSS_ACHIEVEMENTS_REQUEST_CODE:I = 0x138c

.field public static final HSS_CHOOSE_ACCOUNT_REQUEST_CODE:I = 0x1389

.field public static final HSS_GPG_CONNECT_REQUEST_CODE:I = 0x138a

.field public static final HSS_GPG_SIGNIN_REQUEST_CODE:I = 0x138b

.field public static final HSS_LEADERBOARDS_REQUEST_CODE:I = 0x138d

.field public static final PREFS_NAME:Ljava/lang/String; = "DKGooglePlayPrefs"

.field protected static a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity; = null

.field protected static b:Landroid/view/View; = null

.field protected static c:Ljava/lang/String; = null

.field protected static d:Ljava/lang/String; = null

.field protected static e:J = 0x0L

.field protected static f:Lcom/pixelberrystudios/darthkitty/DKGooglePlay; = null

.field protected static g:Lcom/pixelberrystudios/darthkitty/DKGooglePlay$LinkedGameStateProvider; = null

.field protected static i:Z = false

.field private static j:[Ljava/lang/String; = null

.field public static final kTokenRefreshMinimumSeconds:I = 0xe10


# instance fields
.field protected h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    .line 99
    sput-boolean v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->i:Z

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->j:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method

.method protected static a()V
    .locals 3

    .prologue
    .line 743
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dd

    .line 744
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dc

    .line 746
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 747
    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v2, v0, v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 845
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 220
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    if-nez v1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Activity not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    new-instance v1, Lcom/pixelberrystudios/darthkitty/am;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/pixelberrystudios/darthkitty/am;-><init>(Lcom/pixelberrystudios/darthkitty/DKGooglePlay;ZI)V

    .line 225
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 226
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/pixelberrystudios/darthkitty/am;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_1
    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/pixelberrystudios/darthkitty/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static areGCPermissionsEnabled()Z
    .locals 1

    .prologue
    .line 830
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->j:[Ljava/lang/String;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->hasAllPermissions([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static native authenticateFailure()V
.end method

.method public static authenticateLocalPlayer()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 700
    const-string/jumbo v1, "authenticateLocalPlayer"

    invoke-static {v1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->b()[Ljava/lang/String;

    move-result-object v2

    .line 702
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 704
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInBenefitsDialog()V

    .line 730
    :goto_0
    return-void

    .line 706
    :cond_0
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    const-string/jumbo v3, "<LOCAL>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    const-string/jumbo v0, "Skip authenticate since LOCAL"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v0

    .line 714
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 715
    aget-object v3, v2, v0

    sget-object v4, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 716
    const/4 v1, 0x1

    .line 714
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 720
    :cond_3
    if-nez v1, :cond_4

    .line 721
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showAccountNotFoundDialog()V

    goto :goto_0

    .line 726
    :cond_4
    const-string/jumbo v0, "authenticateLocalPlayer getUserToken"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 728
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->refreshGooglePlayLogin()V

    goto :goto_0
.end method

.method protected static native authenticateSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static b()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 242
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 244
    aget-object v3, v1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-object v2
.end method

.method public static beginUserInitiatedSignIn()V
    .locals 0

    .prologue
    .line 544
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->signIn()V

    .line 545
    return-void
.end method

.method public static gamesSignInResult(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 733
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 734
    const-string/jumbo v0, "Google Play Games Services sign in success, attempting to connect again"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 736
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->refreshGooglePlayLogin()V

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "gamesSignInResult failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAccountEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    const-string/jumbo v0, "getAccountEmail"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, "<LOCAL>"

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string/jumbo v0, ""

    .line 256
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInstance()Lcom/pixelberrystudios/darthkitty/DKGooglePlay;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->f:Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    invoke-direct {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->f:Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    .line 205
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->f:Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    return-object v0
.end method

.method public static getLocalPlayer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 651
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    const-string/jumbo v1, "<LOCAL>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    .line 671
    :goto_0
    return-object v0

    .line 657
    :cond_0
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->b()[Ljava/lang/String;

    move-result-object v1

    .line 658
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 659
    aget-object v2, v1, v0

    sget-object v3, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    goto :goto_0

    .line 658
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 671
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getOauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getPersistedAccountChoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static invalidateToken()V
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.google"

    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public static isAuthenticated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 289
    sget-boolean v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->i:Z

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSignedIn()Z
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->e()Z

    move-result v0

    return v0
.end method

.method public static markDefactoAuthenticated()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->i:Z

    .line 684
    const-string/jumbo v0, "de facto"

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public static onChooseAccount(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method public static onSignInFailed()V
    .locals 1

    .prologue
    .line 566
    const-string/jumbo v0, "onSignInFailed"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 567
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInErrorDialog()V

    .line 580
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInBenefitsDialog()V

    goto :goto_0

    .line 576
    :cond_1
    const-string/jumbo v0, "authenticateFailure"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->authenticateFailure()V

    goto :goto_0
.end method

.method public static onSignInSucceeded()V
    .locals 4

    .prologue
    .line 587
    const-string/jumbo v0, "onSignInSucceeded"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->getInstance()Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Z)V

    .line 592
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 593
    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/c;->b(Lcom/google/android/gms/common/api/n;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    :try_start_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e1

    .line 598
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v2}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/games/c;->b(Lcom/google/android/gms/common/api/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 605
    const-string/jumbo v1, "DKGooglePlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "caught SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static refreshGooglePlayLogin()V
    .locals 2

    .prologue
    .line 552
    const-string/jumbo v0, "refreshGooglePlayLogin"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/ak;

    invoke-direct {v1}, Lcom/pixelberrystudios/darthkitty/ak;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method

.method public static refreshOauthToken(Z)V
    .locals 4

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshOauthToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 270
    sget-boolean v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->i:Z

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string/jumbo v0, "<LOCAL>"

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    if-nez p0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 281
    :cond_2
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->invalidateToken()V

    .line 282
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->getInstance()Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Z)V

    goto :goto_0
.end method

.method public static reportScore(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DKGooglePlay.reportScore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 763
    sget-object v0, Lcom/google/android/gms/games/c;->j:Lcom/google/android/gms/games/a/a;

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-interface {v0, v1, p2, p0, p1}, Lcom/google/android/gms/games/a/a;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;J)V

    .line 764
    return-void
.end method

.method public static saveAccountPreference(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 614
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    .line 616
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    const-string/jumbo v1, "DKGooglePlayPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 617
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 618
    const-string/jumbo v1, "g_accountEmail"

    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 619
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 620
    return-void
.end method

.method public static setActivityAndView(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 234
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 235
    sput-object p1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->b:Landroid/view/View;

    .line 236
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    const-string/jumbo v1, "DKGooglePlayPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    const-string/jumbo v1, "g_accountEmail"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public static setLinkedStateProvider(Lcom/pixelberrystudios/darthkitty/DKGooglePlay$LinkedGameStateProvider;)V
    .locals 0

    .prologue
    .line 210
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->g:Lcom/pixelberrystudios/darthkitty/DKGooglePlay$LinkedGameStateProvider;

    .line 211
    return-void
.end method

.method public static showAccountNotFoundDialog()V
    .locals 2

    .prologue
    .line 325
    const-string/jumbo v0, "showAccountNotFoundDialog"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/darthkitty/x;

    invoke-direct {v1}, Lcom/pixelberrystudios/darthkitty/x;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method

.method public static showAchievements()V
    .locals 3

    .prologue
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DKGooglePlay.showAchievements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 768
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a()V

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    sget-object v1, Lcom/google/android/gms/games/c;->g:Lcom/google/android/gms/games/achievement/b;

    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v2}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/b;->a(Lcom/google/android/gms/common/api/n;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x138c

    invoke-virtual {v0, v1, v2}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static showLeaderboard()V
    .locals 3

    .prologue
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DKGooglePlay.showLeaderboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 752
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a()V

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    sget-object v1, Lcom/google/android/gms/games/c;->j:Lcom/google/android/gms/games/a/a;

    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v2}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/a/a;->a(Lcom/google/android/gms/common/api/n;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x138d

    invoke-virtual {v0, v1, v2}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static showOauthErrorDialog()V
    .locals 2

    .prologue
    .line 507
    const-string/jumbo v0, "showOauthErrorDialog"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/darthkitty/ah;

    invoke-direct {v1}, Lcom/pixelberrystudios/darthkitty/ah;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method

.method public static showSignInBenefitsDialog()V
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->areGCPermissionsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    const-string/jumbo v0, "Can\'t show sign in benefits since user can\'t sign in"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 400
    :cond_0
    const-string/jumbo v0, "showSignInBenefitsDialog"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/darthkitty/ad;

    invoke-direct {v1}, Lcom/pixelberrystudios/darthkitty/ad;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static showSignInErrorDialog()V
    .locals 2

    .prologue
    .line 363
    const-string/jumbo v0, "showSignInErrorDialog"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/darthkitty/aa;

    invoke-direct {v1}, Lcom/pixelberrystudios/darthkitty/aa;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method public static signIn()V
    .locals 2

    .prologue
    .line 808
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->j:[Ljava/lang/String;

    sget v1, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->GC_PERMISSIONS_REQUEST:I

    invoke-static {v0, v1}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->requestPermissionsIfNeeded([Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/al;

    invoke-direct {v1}, Lcom/pixelberrystudios/darthkitty/al;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 817
    :cond_0
    return-void
.end method

.method public static signOut()V
    .locals 3

    .prologue
    .line 787
    const-string/jumbo v0, "signOut"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 788
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->g()V

    .line 790
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    .line 791
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    .line 792
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->e:J

    .line 795
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    const-string/jumbo v1, "DKGooglePlayPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 797
    const-string/jumbo v1, "g_accountEmail"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 798
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 799
    return-void
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DKGooglePlay.unlockAchievement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 778
    sget-object v0, Lcom/google/android/gms/games/c;->g:Lcom/google/android/gms/games/achievement/b;

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/games/achievement/b;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public static willGCPermissionsBeAsked()Z
    .locals 1

    .prologue
    .line 823
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->j:[Ljava/lang/String;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->willPermissionsBeAsked([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public setWebOauthId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->h:Ljava/lang/String;

    .line 216
    return-void
.end method
