.class Lcom/amazon/ags/client/session/SessionClient$3;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/session/SessionClient;

.field final synthetic val$sessionEvent:Lcom/amazon/ags/client/session/SessionEvent;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/session/SessionClient;Ljava/lang/String;Lcom/amazon/ags/client/session/SessionEvent;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazon/ags/client/session/SessionClient$3;->this$0:Lcom/amazon/ags/client/session/SessionClient;

    iput-object p3, p0, Lcom/amazon/ags/client/session/SessionClient$3;->val$sessionEvent:Lcom/amazon/ags/client/session/SessionEvent;

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazon/ags/client/session/SessionClient$3;->val$sessionEvent:Lcom/amazon/ags/client/session/SessionEvent;

    invoke-virtual {v0}, Lcom/amazon/ags/client/session/SessionEvent;->getActionCode()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;->buildRequestForServiceAction(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "REQUEST_TIMESTAMP"

    iget-object v2, p0, Lcom/amazon/ags/client/session/SessionClient$3;->val$sessionEvent:Lcom/amazon/ags/client/session/SessionEvent;

    invoke-virtual {v2}, Lcom/amazon/ags/client/session/SessionEvent;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 2

    .prologue
    .line 118
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImpl;

    invoke-direct {v1, v0}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(I)V

    return-object v1
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v1, 0x18

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method
