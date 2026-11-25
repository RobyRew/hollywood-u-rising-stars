.class public Lcom/amazon/ags/client/achievements/AchievementsClientImpl;
.super Lcom/amazon/ags/client/ClientBase;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/achievements/AchievementsClient;


# instance fields
.field private overlayClient:Lcom/amazon/ags/client/OverlayClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/amazon/ags/client/ClientBase;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/client/OverlayClient;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ClientBase;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    .line 45
    iput-object p2, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 46
    return-void
.end method

.method public static convertToAchievement(Lorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/Achievement;
    .locals 18

    .prologue
    .line 128
    const-string/jumbo v2, "ACHIEVEMENT_ID"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string/jumbo v2, "ACHIEVEMENT_TITLE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string/jumbo v2, "ACHIEVEMENT_DESCRIPTION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    const-string/jumbo v2, "ACHIEVEMENT_POINTS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 132
    const-string/jumbo v2, "ACHIEVEMENT_HIDDEN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 133
    const-string/jumbo v2, "ACHIEVEMENT_UNLOCKED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 134
    const-string/jumbo v2, "ACHIEVEMENT_UPDATE_PERCENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v9, v10

    .line 135
    const-string/jumbo v2, "ACHIEVEMENT_POSITION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 136
    const-string/jumbo v2, "ACHIEVEMENT_DATE_UNLOCKED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 137
    const-string/jumbo v2, "ACHIEVEMENT_ICON_URL_LARGE"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 139
    if-eqz v8, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_1

    .line 140
    :cond_0
    const/4 v11, 0x0

    .line 145
    :goto_0
    new-instance v2, Lcom/amazon/ags/client/achievements/AchievementImpl;

    invoke-direct/range {v2 .. v12}, Lcom/amazon/ags/client/achievements/AchievementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZFILjava/util/Date;Ljava/lang/String;)V

    return-object v2

    .line 142
    :cond_1
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public varargs getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 99
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 100
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAchievement called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;

    const-string/jumbo v1, "Get Achievement"

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;-><init>(Lcom/amazon/ags/client/achievements/AchievementsClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 60
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 61
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAchievements called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$1;

    const-string/jumbo v1, "Get Achievements"

    invoke-direct {v0, p0, v1}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$1;-><init>(Lcom/amazon/ags/client/achievements/AchievementsClientImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$1;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public setOverlayClient(Lcom/amazon/ags/client/OverlayClient;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 55
    return-void
.end method

.method public varargs showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 187
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 188
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showAchievementsOverlay called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/OverlayClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->isReady:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 51
    return-void
.end method

.method public varargs updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 153
    new-instance v1, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 154
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateProgress called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;

    const-string/jumbo v1, "Update Achievement Progress"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;-><init>(Lcom/amazon/ags/client/achievements/AchievementsClientImpl;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v0, p3}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method
