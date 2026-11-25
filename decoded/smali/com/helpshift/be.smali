.class Lcom/helpshift/be;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Landroid/os/Handler;

.field final synthetic g:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/helpshift/be;->g:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/be;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/be;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/be;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpshift/be;->d:Ljava/lang/String;

    iput p6, p0, Lcom/helpshift/be;->e:I

    iput-object p7, p0, Lcom/helpshift/be;->f:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/be;->g:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/be;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/be;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/be;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/be;->d:Ljava/lang/String;

    iget v5, p0, Lcom/helpshift/be;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/helpshift/be;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 525
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/helpshift/be;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSON Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
