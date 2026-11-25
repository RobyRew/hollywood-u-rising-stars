.class Lcom/pixelberrystudios/darthkitty/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/as;->a:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/as;->a:Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 67
    return-void
.end method
