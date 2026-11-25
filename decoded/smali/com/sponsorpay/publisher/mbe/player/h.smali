.class final Lcom/sponsorpay/publisher/mbe/player/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/a;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/player/a;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/h;->a:Lcom/sponsorpay/publisher/mbe/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/h;->a:Lcom/sponsorpay/publisher/mbe/player/a;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/a;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 652
    return-void
.end method
