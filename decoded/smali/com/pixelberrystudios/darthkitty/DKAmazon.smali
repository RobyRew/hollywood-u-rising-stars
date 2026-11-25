.class public Lcom/pixelberrystudios/darthkitty/DKAmazon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

.field protected static b:Ljava/lang/String;

.field protected static c:Lcom/pixelberrystudios/darthkitty/DKAmazon;

.field protected static d:Z

.field private static f:Lcom/amazon/ags/api/AmazonGamesClient;


# instance fields
.field protected e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()V
    .locals 3

    .prologue
    .line 257
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v2, v0, v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method protected static native authenticateFailure()V
.end method

.method public static authenticateLocalPlayer()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->d:Z

    .line 153
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->d:Z

    .line 156
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getInstance()Lcom/pixelberrystudios/darthkitty/DKAmazon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->scheduleAuthenticationCallback()V

    .line 175
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->a()Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/darthkitty/b;

    invoke-direct {v1}, Lcom/pixelberrystudios/darthkitty/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->a(Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;)V

    goto :goto_0
.end method

.method protected static native authenticateSuccess(Ljava/lang/String;)V
.end method

.method protected static b()V
    .locals 4

    .prologue
    .line 268
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 270
    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    new-instance v3, Lcom/pixelberrystudios/darthkitty/c;

    invoke-direct {v3}, Lcom/pixelberrystudios/darthkitty/c;-><init>()V

    invoke-virtual {v2, v0, v1, v3}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 278
    return-void
.end method

.method public static clearGamesClient()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    .line 188
    return-void
.end method

.method public static getAccountEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/pixelberrystudios/darthkitty/DKAmazon;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->c:Lcom/pixelberrystudios/darthkitty/DKAmazon;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;

    invoke-direct {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->c:Lcom/pixelberrystudios/darthkitty/DKAmazon;

    .line 42
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->c:Lcom/pixelberrystudios/darthkitty/DKAmazon;

    return-object v0
.end method

.method public static getIsSandbox()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getInstance()Lcom/pixelberrystudios/darthkitty/DKAmazon;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->e:Z

    return v0
.end method

.method public static getPersistedAccountChoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getAccountEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAuthenticated()Z
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDKAmazonHelperInited()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->a()Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->b()Z

    move-result v0

    return v0
.end method

.method public static reportScore(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DKAmazon.reportScore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

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

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p2, p0, p1, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    goto :goto_0
.end method

.method public static setActivity(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;)V
    .locals 0

    .prologue
    .line 88
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 89
    return-void
.end method

.method public static setGamesClient(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 0

    .prologue
    .line 183
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    .line 184
    return-void
.end method

.method public static setIabPayment(Lcom/pixelberrystudios/iab/ah;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->a()Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->a(Lcom/pixelberrystudios/iab/ah;)V

    .line 57
    return-void
.end method

.method public static setIsSandbox(Z)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getInstance()Lcom/pixelberrystudios/darthkitty/DKAmazon;

    move-result-object v0

    iput-boolean p0, v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->e:Z

    .line 48
    return-void
.end method

.method public static setPopupLocationTopCenter()V
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    sget-object v1, Lcom/amazon/ags/api/overlay/PopUpLocation;->TOP_CENTER:Lcom/amazon/ags/api/overlay/PopUpLocation;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/api/AmazonGamesClient;->setPopUpLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V

    .line 244
    :cond_0
    return-void
.end method

.method public static showAchievements()V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DKAmazon.showAchievements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a(Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a()V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    goto :goto_0
.end method

.method public static showLeaderboard()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DKAmazon.showLeaderboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a(Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a()V

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    goto :goto_0
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DKAmazon.unlockAchievement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a(Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->f:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    goto :goto_0
.end method


# virtual methods
.method public scheduleAuthenticationCallback()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Activity not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/a;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/a;-><init>(Lcom/pixelberrystudios/darthkitty/DKAmazon;)V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method
