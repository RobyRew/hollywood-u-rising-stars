.class public Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static a:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native DKMoviePlayerOnCompletion(Ljava/lang/String;)V
.end method

.method static synthetic a(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    return-object v0
.end method

.method public static getInstance()Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->a:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    invoke-direct {v0}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->a:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    .line 30
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->a:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "DKMoviePlayer"

    const-string/jumbo v1, "MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 87
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->DKMoviePlayerOnCompletion(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 73
    const-string/jumbo v0, "DKMoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Media player error: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 79
    const-string/jumbo v0, "DKMoviePlayer"

    const-string/jumbo v1, "MediaPlayer.onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 81
    return-void
.end method

.method public playMovie(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->b:Landroid/app/Activity;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/ar;

    invoke-direct {v1, p0, p1}, Lcom/pixelberrystudios/darthkitty/ar;-><init>(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public setActivityAndView(Landroid/app/Activity;Landroid/widget/VideoView;)V
    .locals 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->b:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    .line 37
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 38
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 41
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 42
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 45
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->c:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 46
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->b:Landroid/app/Activity;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/as;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/as;-><init>(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
