.class Lcom/amazon/ags/client/player/PlayerClientImpl$1;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/player/RequestPlayerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/player/PlayerClientImpl;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/player/PlayerClientImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/amazon/ags/client/player/PlayerClientImpl$1;->this$0:Lcom/amazon/ags/client/player/PlayerClientImpl;

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    const-string/jumbo v1, "ACTION_CODE"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    return-object v0
.end method

.method public bridge synthetic convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/player/PlayerClientImpl$1;->convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/player/RequestPlayerResponse;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/player/RequestPlayerResponse;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    const-string/jumbo v1, "ALIAS"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "playerId"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "avatarUrl"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/amazon/ags/client/player/PlayerImpl;

    invoke-direct {v4, v2, v1, v3}, Lcom/amazon/ags/client/player/PlayerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/amazon/ags/client/player/RequestPlayerResponseImpl;

    invoke-direct {v1, v4, v0}, Lcom/amazon/ags/client/player/RequestPlayerResponseImpl;-><init>(Lcom/amazon/ags/api/player/Player;I)V

    return-object v1
.end method

.method public bridge synthetic getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/player/PlayerClientImpl$1;->getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/player/RequestPlayerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/player/RequestPlayerResponse;
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/amazon/ags/client/player/PlayerClientImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request player failure response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/amazon/ags/client/player/RequestPlayerResponseImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/amazon/ags/client/player/RequestPlayerResponseImpl;-><init>(Lcom/amazon/ags/api/player/Player;I)V

    return-object v0
.end method
