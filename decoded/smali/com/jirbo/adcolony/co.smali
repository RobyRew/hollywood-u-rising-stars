.class Lcom/jirbo/adcolony/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ck;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ck;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 382
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    iput v3, v0, Lcom/jirbo/adcolony/ck;->e:I

    .line 384
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    iput v3, v0, Lcom/jirbo/adcolony/ck;->f:I

    .line 385
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->m:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->m:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->q:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    iget-object v0, v0, Lcom/jirbo/adcolony/ck;->q:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    iget-object v1, v1, Lcom/jirbo/adcolony/ck;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    :cond_1
    :goto_0
    return v4

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ck;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ck;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 405
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    .line 406
    const-string/jumbo v0, "Invalid progressive playback"

    .line 411
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jirbo/adcolony/co;->a:Lcom/jirbo/adcolony/ck;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ck;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "ERROR"

    .line 412
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 413
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OKAY"

    new-instance v2, Lcom/jirbo/adcolony/cp;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/cp;-><init>(Lcom/jirbo/adcolony/co;)V

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 425
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 408
    :cond_3
    const-string/jumbo v0, "Unknown error"

    goto :goto_1
.end method
