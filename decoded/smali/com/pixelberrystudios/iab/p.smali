.class Lcom/pixelberrystudios/iab/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/pixelberrystudios/iab/p;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusGained()V
    .locals 1

    .prologue
    .line 227
    const-string/jumbo v0, "BaseIabActivity onFocusGained"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/pixelberrystudios/iab/p;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->z()V

    .line 229
    return-void
.end method
