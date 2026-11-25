.class Lcom/jirbo/adcolony/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ck;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ck;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iput p3, v0, Lcom/jirbo/adcolony/ck;->k:I

    .line 480
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iput p4, v0, Lcom/jirbo/adcolony/ck;->l:I

    .line 481
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget v0, v0, Lcom/jirbo/adcolony/ck;->f:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 482
    :goto_0
    iget-object v3, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget v3, v3, Lcom/jirbo/adcolony/ck;->i:I

    if-ne v3, p3, :cond_3

    iget-object v3, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget v3, v3, Lcom/jirbo/adcolony/ck;->j:I

    if-ne v3, p4, :cond_3

    .line 483
    :goto_1
    iget-object v2, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v2, v2, Lcom/jirbo/adcolony/ck;->h:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 484
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget v0, v0, Lcom/jirbo/adcolony/ck;->r:I

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v1, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget v1, v1, Lcom/jirbo/adcolony/ck;->r:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ck;->seekTo(I)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ck;->start()V

    .line 488
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->m:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->m:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 492
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 481
    goto :goto_0

    :cond_3
    move v1, v2

    .line 482
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iput-object p1, v0, Lcom/jirbo/adcolony/ck;->g:Landroid/view/SurfaceHolder;

    .line 498
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget v0, v0, Lcom/jirbo/adcolony/ck;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget v0, v0, Lcom/jirbo/adcolony/ck;->f:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v1, v1, Lcom/jirbo/adcolony/ck;->g:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 501
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ck;->c()V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    invoke-static {v0}, Lcom/jirbo/adcolony/ck;->a(Lcom/jirbo/adcolony/ck;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jirbo/adcolony/ck;->g:Landroid/view/SurfaceHolder;

    .line 511
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->m:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->m:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    iget v0, v0, Lcom/jirbo/adcolony/ck;->e:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 513
    iget-object v0, p0, Lcom/jirbo/adcolony/cr;->a:Lcom/jirbo/adcolony/ck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/ck;->a(Lcom/jirbo/adcolony/ck;Z)V

    .line 515
    :cond_1
    return-void
.end method
