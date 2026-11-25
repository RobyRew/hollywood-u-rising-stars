.class Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger$1;->this$0:Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

    iput-object p2, p0, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger$1;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger$1;->this$0:Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

    invoke-static {v0}, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;->access$000(Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger$1;->val$requestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/client/JSONRequest;

    .line 69
    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 75
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    const-string/jumbo v2, "RESPONSE_CODE"

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v2, "REQUEST_ID"

    iget-object v3, p0, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-interface {v0, v1}, Lcom/amazon/ags/client/JSONRequest;->setResponse(Lorg/json/JSONObject;)V

    .line 80
    invoke-static {}, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timed out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    invoke-static {}, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to generate a timeout response for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  The callback won\'t be called."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
