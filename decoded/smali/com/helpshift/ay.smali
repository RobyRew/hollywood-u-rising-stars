.class Lcom/helpshift/ay;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;)V
    .locals 0

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/helpshift/ay;->a:Lcom/helpshift/al;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/helpshift/ay;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->v()V

    .line 1320
    return-void
.end method
