.class abstract Landroid/support/design/widget/ay;
.super Landroid/support/design/widget/cj;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/ck;


# instance fields
.field private a:Z

.field final synthetic b:Landroid/support/design/widget/as;

.field private c:F

.field private d:F


# direct methods
.method private constructor <init>(Landroid/support/design/widget/as;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/design/widget/ay;->b:Landroid/support/design/widget/as;

    invoke-direct {p0}, Landroid/support/design/widget/cj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/as;Landroid/support/design/widget/at;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Landroid/support/design/widget/ay;-><init>(Landroid/support/design/widget/as;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method public a(Landroid/support/design/widget/cf;)V
    .locals 4

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/support/design/widget/ay;->a:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/support/design/widget/ay;->b:Landroid/support/design/widget/as;

    iget-object v0, v0, Landroid/support/design/widget/as;->a:Landroid/support/design/widget/bl;

    invoke-virtual {v0}, Landroid/support/design/widget/bl;->a()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ay;->c:F

    .line 228
    invoke-virtual {p0}, Landroid/support/design/widget/ay;->a()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ay;->d:F

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ay;->a:Z

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ay;->b:Landroid/support/design/widget/as;

    iget-object v0, v0, Landroid/support/design/widget/as;->a:Landroid/support/design/widget/bl;

    iget v1, p0, Landroid/support/design/widget/ay;->c:F

    iget v2, p0, Landroid/support/design/widget/ay;->d:F

    iget v3, p0, Landroid/support/design/widget/ay;->c:F

    sub-float/2addr v2, v3

    .line 233
    invoke-virtual {p1}, Landroid/support/design/widget/cf;->f()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 232
    invoke-virtual {v0, v1}, Landroid/support/design/widget/bl;->b(F)V

    .line 234
    return-void
.end method

.method public b(Landroid/support/design/widget/cf;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/design/widget/ay;->b:Landroid/support/design/widget/as;

    iget-object v0, v0, Landroid/support/design/widget/as;->a:Landroid/support/design/widget/bl;

    iget v1, p0, Landroid/support/design/widget/ay;->d:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bl;->b(F)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ay;->a:Z

    .line 240
    return-void
.end method
