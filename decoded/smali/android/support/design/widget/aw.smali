.class Landroid/support/design/widget/aw;
.super Landroid/support/design/widget/ay;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/design/widget/as;


# direct methods
.method constructor <init>(Landroid/support/design/widget/as;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/design/widget/aw;->a:Landroid/support/design/widget/as;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/ay;-><init>(Landroid/support/design/widget/as;Landroid/support/design/widget/at;)V

    .line 260
    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/support/design/widget/aw;->a:Landroid/support/design/widget/as;

    iget v0, v0, Landroid/support/design/widget/as;->g:F

    iget-object v1, p0, Landroid/support/design/widget/aw;->a:Landroid/support/design/widget/as;

    iget v1, v1, Landroid/support/design/widget/as;->h:F

    add-float/2addr v0, v1

    return v0
.end method
