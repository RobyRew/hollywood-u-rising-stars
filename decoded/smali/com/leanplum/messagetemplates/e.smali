.class final Lcom/leanplum/messagetemplates/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/leanplum/messagetemplates/BaseMessageDialog;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/BaseMessageDialog;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/leanplum/messagetemplates/e;->a:Lcom/leanplum/messagetemplates/BaseMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 110
    new-instance v1, Lcom/leanplum/messagetemplates/f;

    invoke-direct {v1, p0}, Lcom/leanplum/messagetemplates/f;-><init>(Lcom/leanplum/messagetemplates/e;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method
