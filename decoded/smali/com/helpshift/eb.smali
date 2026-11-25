.class final Lcom/helpshift/eb;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/helpshift/d/b/a;->b(Lorg/json/JSONObject;)V

    .line 339
    invoke-static {}, Lcom/helpshift/ea;->b()Lcom/helpshift/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/dx;->c()V

    .line 340
    return-void
.end method
