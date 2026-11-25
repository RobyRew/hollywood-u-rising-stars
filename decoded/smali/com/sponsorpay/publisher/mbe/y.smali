.class final Lcom/sponsorpay/publisher/mbe/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/y;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 914
    const-string/jumbo v0, "SPBrandEngageClient"

    const-string/jumbo v1, "double tap event"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const/4 v0, 0x1

    return v0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 921
    const-string/jumbo v0, "SPBrandEngageClient"

    const-string/jumbo v1, "double tap event"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    return v0
.end method
