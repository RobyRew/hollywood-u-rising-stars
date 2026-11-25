.class Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$4;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$4;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;

    invoke-static {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->access$500(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;)V

    .line 341
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method
