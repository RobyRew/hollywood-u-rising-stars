.class Landroid/support/design/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/bv;


# instance fields
.field final synthetic a:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Landroid/support/design/widget/k;->a:Landroid/support/design/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 417
    packed-switch p1, :pswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 421
    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/bn;->a()Landroid/support/design/widget/bn;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/k;->a:Landroid/support/design/widget/h;

    iget-object v1, v1, Landroid/support/design/widget/h;->c:Landroid/support/design/widget/bp;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bn;->c(Landroid/support/design/widget/bp;)V

    goto :goto_0

    .line 425
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/bn;->a()Landroid/support/design/widget/bn;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/k;->a:Landroid/support/design/widget/h;

    iget-object v1, v1, Landroid/support/design/widget/h;->c:Landroid/support/design/widget/bp;

    .line 426
    invoke-virtual {v0, v1}, Landroid/support/design/widget/bn;->d(Landroid/support/design/widget/bp;)V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 411
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Landroid/support/design/widget/k;->a:Landroid/support/design/widget/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/h;->a(I)V

    .line 413
    return-void
.end method
