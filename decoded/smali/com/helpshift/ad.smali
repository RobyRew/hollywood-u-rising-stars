.class Lcom/helpshift/ad;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/s;


# direct methods
.method constructor <init>(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/helpshift/ad;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/helpshift/ad;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->m(Lcom/helpshift/s;)Lcom/helpshift/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/al;->q()V

    .line 304
    invoke-static {}, Lcom/helpshift/e/ah;->b()V

    .line 305
    return-void
.end method
