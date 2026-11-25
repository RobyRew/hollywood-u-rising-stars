.class Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

.field final synthetic val$leaderboardId:Ljava/lang/String;

.field final synthetic val$score:J


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    iput-object p3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->val$leaderboardId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->val$score:J

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 145
    const-string/jumbo v1, "ACTION_CODE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v1, "LEADERBOARD_ID"

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->val$leaderboardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v1, "LEADERBOARD_SUBMIT_SCORE"

    iget-wide v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->val$score:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    return-object v0
.end method

.method public bridge synthetic convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;
    .locals 9

    .prologue
    .line 153
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 155
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 157
    :try_start_0
    const-string/jumbo v0, "LEADERBOARD_SUBMIT_RESULT"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string/jumbo v0, "LEADERBOARD_SUBMIT_RESULT"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 160
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 161
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    instance-of v6, v0, Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    .line 163
    check-cast v0, Lorg/json/JSONObject;

    .line 164
    const-string/jumbo v6, "Scope"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-static {v6}, Lcom/amazon/ags/constants/LeaderboardFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v7

    .line 166
    if-nez v7, :cond_0

    .line 167
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    invoke-static {v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->access$100(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid filter returned from service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 170
    :cond_0
    const-string/jumbo v6, "IsImproved"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v6, "PlayerRank"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    invoke-static {v1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->access$300(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "Caught JSON Exception, skipping Submit Score Result Element(s)"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_1
    new-instance v0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImpl;

    invoke-direct {v0, v3, v4, v2}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImpl;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0

    .line 173
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    invoke-static {v6}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->access$200(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", skipping this Submit Score Result Element"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImpl;

    const/16 v1, 0x18

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method
