.class public Lcom/adjust/sdk/ResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activityKind:Lcom/adjust/sdk/ActivityKind;

.field private error:Ljava/lang/String;

.field private success:Z

.field private trackerName:Ljava/lang/String;

.field private trackerToken:Ljava/lang/String;

.field private willRetry:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    iput-object v0, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    return-void
.end method

.method public static fromError(Ljava/lang/String;)Lcom/adjust/sdk/ResponseData;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/adjust/sdk/ResponseData;

    invoke-direct {v0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 90
    iput-object p0, v0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    .line 91
    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/adjust/sdk/ResponseData;
    .locals 4

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Lcom/adjust/sdk/ResponseData;

    invoke-direct {v0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v2, "error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    .line 78
    const-string/jumbo v2, "tracker_token"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    .line 79
    const-string/jumbo v2, "tracker_name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string/jumbo v0, "Failed to parse json response: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/adjust/sdk/ResponseData;->fromError(Ljava/lang/String;)Lcom/adjust/sdk/ResponseData;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getActivityKind()Lcom/adjust/sdk/ActivityKind;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    return-object v0
.end method

.method public getActivityKindString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackerToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityKind(Lcom/adjust/sdk/ActivityKind;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 107
    return-void
.end method

.method public setWasSuccess(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    .line 111
    return-void
.end method

.method public setWillRetry(Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 115
    return-void
.end method

.method public toDic()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    const-string/jumbo v0, "activityKind"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v2}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v2, "success"

    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "true"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v2, "willRetry"

    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "true"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const-string/jumbo v0, "error"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string/jumbo v0, "trackerToken"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    const-string/jumbo v0, "trackerName"

    iget-object v2, p0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_2
    return-object v1

    .line 121
    :cond_3
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 122
    :cond_4
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "[kind:%s success:%b willRetry:%b error:%s trackerToken:%s trackerName:%s]"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/adjust/sdk/ResponseData;->getActivityKindString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    .line 98
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 99
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->error:Ljava/lang/String;

    .line 100
    invoke-static {v4}, Lcom/adjust/sdk/Util;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->trackerToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->trackerName:Ljava/lang/String;

    .line 102
    invoke-static {v4}, Lcom/adjust/sdk/Util;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 95
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasSuccess()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    return v0
.end method

.method public willRetry()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    return v0
.end method
