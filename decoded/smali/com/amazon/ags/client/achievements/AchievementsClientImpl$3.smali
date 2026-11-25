.class Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/achievements/AchievementsClientImpl;

.field final synthetic val$achievementId:Ljava/lang/String;

.field final synthetic val$percentComplete:F


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/achievements/AchievementsClientImpl;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->this$0:Lcom/amazon/ags/client/achievements/AchievementsClientImpl;

    iput-object p3, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->val$achievementId:Ljava/lang/String;

    iput p4, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->val$percentComplete:F

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string/jumbo v1, "ACTION_CODE"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string/jumbo v1, "ACHIEVEMENT_ID"

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->val$achievementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string/jumbo v1, "ACHIEVEMENT_UPDATE_PERCENT"

    iget v2, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->val$percentComplete:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 165
    return-object v0
.end method

.method public bridge synthetic convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/UpdateProgressResponse;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/UpdateProgressResponse;
    .locals 3

    .prologue
    .line 170
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    const-string/jumbo v1, "ACHIEVEMENT_NEWLY_UNLOCKED"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 173
    new-instance v2, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImpl;

    invoke-direct {v2, v1, v0}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImpl;-><init>(ZI)V

    return-object v2
.end method

.method public bridge synthetic getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/UpdateProgressResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/UpdateProgressResponse;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImpl;

    const/16 v1, 0x18

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method
