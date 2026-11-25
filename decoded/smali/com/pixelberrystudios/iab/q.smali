.class Lcom/pixelberrystudios/iab/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/pixelberrystudios/iab/q;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/pixelberrystudios/iab/q;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 296
    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/pixelberrystudios/iab/q;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/q;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->finish()V

    goto :goto_0
.end method
