.class Lcom/pixelberrystudios/darthkitty/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/ar;->b:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    iput-object p2, p0, Lcom/pixelberrystudios/darthkitty/ar;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/ar;->b:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->a(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 54
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/ar;->b:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->a(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/ar;->b:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->a(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/ar;->b:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->a(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/ar;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 57
    return-void
.end method
