.class Lcom/jirbo/adcolony/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ck;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ck;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/jirbo/adcolony/cn;->a:Lcom/jirbo/adcolony/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 368
    iget-object v0, p0, Lcom/jirbo/adcolony/cn;->a:Lcom/jirbo/adcolony/ck;

    iput v1, v0, Lcom/jirbo/adcolony/ck;->e:I

    .line 369
    iget-object v0, p0, Lcom/jirbo/adcolony/cn;->a:Lcom/jirbo/adcolony/ck;

    iput v1, v0, Lcom/jirbo/adcolony/ck;->f:I

    .line 370
    iget-object v0, p0, Lcom/jirbo/adcolony/cn;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->m:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/jirbo/adcolony/cn;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->m:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/cn;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->n:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/jirbo/adcolony/cn;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->n:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/cn;->a:Lcom/jirbo/adcolony/ck;

    iget-object v1, v1, Lcom/jirbo/adcolony/ck;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 376
    :cond_1
    return-void
.end method
