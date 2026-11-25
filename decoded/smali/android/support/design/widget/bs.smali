.class Landroid/support/design/widget/bs;
.super Landroid/support/design/widget/cj;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/design/widget/br;


# direct methods
.method constructor <init>(Landroid/support/design/widget/br;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Landroid/support/design/widget/bs;->a:Landroid/support/design/widget/br;

    invoke-direct {p0}, Landroid/support/design/widget/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/support/design/widget/cf;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/design/widget/bs;->a:Landroid/support/design/widget/br;

    iget-object v0, v0, Landroid/support/design/widget/br;->a:Landroid/support/design/widget/cf;

    if-ne v0, p1, :cond_0

    .line 35
    iget-object v0, p0, Landroid/support/design/widget/bs;->a:Landroid/support/design/widget/br;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/br;->a:Landroid/support/design/widget/cf;

    .line 37
    :cond_0
    return-void
.end method
