.class Lcom/jirbo/adcolony/bk;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/bi;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/bi;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/jirbo/adcolony/bk;->a:Lcom/jirbo/adcolony/bi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/jirbo/adcolony/bk;->a:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/bk;->a:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/ck;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/jirbo/adcolony/bk;->a:Lcom/jirbo/adcolony/bi;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/bi;->a(I)V

    goto :goto_0
.end method
