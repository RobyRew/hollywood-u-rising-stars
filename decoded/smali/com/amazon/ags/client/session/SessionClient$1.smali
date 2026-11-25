.class Lcom/amazon/ags/client/session/SessionClient$1;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/client/session/InitializeSessionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/session/SessionClient;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/session/SessionClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amazon/ags/client/session/SessionClient$1;->this$0:Lcom/amazon/ags/client/session/SessionClient;

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x19

    invoke-super {p0, v0}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;->buildRequestForServiceAction(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/session/SessionClient$1;->convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/client/session/InitializeSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/client/session/InitializeSessionResponse;
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 57
    const-string/jumbo v1, "AUTH_RESULT"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/amazon/ags/client/session/InitializeSessionResponse;

    invoke-direct {v2, v1, v0}, Lcom/amazon/ags/client/session/InitializeSessionResponse;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public bridge synthetic getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/session/SessionClient$1;->getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/client/session/InitializeSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/client/session/InitializeSessionResponse;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lcom/amazon/ags/client/session/InitializeSessionResponse;

    const/16 v1, 0x18

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/session/InitializeSessionResponse;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method
