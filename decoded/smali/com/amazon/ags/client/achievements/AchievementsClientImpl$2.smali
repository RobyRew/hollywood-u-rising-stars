.class Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/achievements/AchievementsClientImpl;

.field final synthetic val$achievementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/achievements/AchievementsClientImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;->this$0:Lcom/amazon/ags/client/achievements/AchievementsClientImpl;

    iput-object p3, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;->val$achievementId:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 108
    const-string/jumbo v1, "ACTION_CODE"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v1, "ACHIEVEMENT_ID"

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;->val$achievementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    return-object v0
.end method

.method public bridge synthetic convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;->convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/GetAchievementResponse;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/GetAchievementResponse;
    .locals 3

    .prologue
    .line 115
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;

    invoke-static {p1}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->convertToAchievement(Lorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/Achievement;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;-><init>(Lcom/amazon/ags/api/achievements/Achievement;I)V

    return-object v1
.end method

.method public bridge synthetic getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;->getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/GetAchievementResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/GetAchievementResponse;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;

    const/16 v1, 0x18

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method
