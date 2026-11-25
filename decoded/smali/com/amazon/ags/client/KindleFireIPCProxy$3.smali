.class Lcom/amazon/ags/client/KindleFireIPCProxy$3;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/KindleFireIPCProxy;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$3;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 403
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Handling authorize callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 407
    if-nez v0, :cond_1

    .line 408
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "No bundle in authorize result."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$3;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    sget-object v1, Lcom/amazon/ags/client/KindleFireStatus;->CANNOT_AUTHORIZE:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-static {v0, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$300(Lcom/amazon/ags/client/KindleFireIPCProxy;Lcom/amazon/ags/client/KindleFireStatus;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string/jumbo v1, "AUTH_RESULT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string/jumbo v1, "KindleFireIPCProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "authResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string/jumbo v1, "AUTHORIZED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$3;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    invoke-static {v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$400(Lcom/amazon/ags/client/KindleFireIPCProxy;)V

    goto :goto_0

    .line 417
    :cond_2
    const-string/jumbo v1, "INVALID_SESSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$3;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    sget-object v1, Lcom/amazon/ags/client/KindleFireStatus;->NOT_AUTHORIZED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-static {v0, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$300(Lcom/amazon/ags/client/KindleFireIPCProxy;Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0

    .line 419
    :cond_3
    const-string/jumbo v1, "CANNOT_AUTHORIZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$3;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    sget-object v1, Lcom/amazon/ags/client/KindleFireStatus;->CANNOT_AUTHORIZE:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-static {v0, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$300(Lcom/amazon/ags/client/KindleFireIPCProxy;Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0

    .line 421
    :cond_4
    const-string/jumbo v1, "NOT_AUTHORIZED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy$3;->this$0:Lcom/amazon/ags/client/KindleFireIPCProxy;

    sget-object v1, Lcom/amazon/ags/client/KindleFireStatus;->NOT_AUTHORIZED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-static {v0, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->access$300(Lcom/amazon/ags/client/KindleFireIPCProxy;Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0
.end method
