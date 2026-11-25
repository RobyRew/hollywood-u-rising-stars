.class public final Lcom/helpshift/HSReview;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/helpshift/HSReview;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lcom/helpshift/HSReview;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/helpshift/da;

    invoke-direct {v1}, Lcom/helpshift/da;-><init>()V

    .line 18
    const-string/jumbo v2, "hs__review_dialog"

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/da;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 19
    return-void
.end method
