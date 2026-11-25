.class Landroid/support/v7/widget/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/ae;


# instance fields
.field a:Landroid/support/v7/view/menu/o;

.field b:Landroid/support/v7/view/menu/s;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 2297
    iput-object p1, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2298
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/o;)V
    .locals 2

    .prologue
    .line 2303
    iget-object v0, p0, Landroid/support/v7/widget/gw;->a:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/gw;->b:Landroid/support/v7/view/menu/s;

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Landroid/support/v7/widget/gw;->a:Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/widget/gw;->b:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->d(Landroid/support/v7/view/menu/s;)Z

    .line 2306
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/gw;->a:Landroid/support/v7/view/menu/o;

    .line 2307
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 2415
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/af;)V
    .locals 0

    .prologue
    .line 2340
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o;Z)V
    .locals 0

    .prologue
    .line 2349
    return-void
.end method

.method public a(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2317
    iget-object v1, p0, Landroid/support/v7/widget/gw;->b:Landroid/support/v7/view/menu/s;

    if-eqz v1, :cond_1

    .line 2320
    iget-object v1, p0, Landroid/support/v7/widget/gw;->a:Landroid/support/v7/view/menu/o;

    if-eqz v1, :cond_0

    .line 2321
    iget-object v1, p0, Landroid/support/v7/widget/gw;->a:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/o;->size()I

    move-result v2

    move v1, v0

    .line 2322
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2323
    iget-object v3, p0, Landroid/support/v7/widget/gw;->a:Landroid/support/v7/view/menu/o;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2324
    iget-object v4, p0, Landroid/support/v7/widget/gw;->b:Landroid/support/v7/view/menu/s;

    if-ne v3, v4, :cond_2

    .line 2325
    const/4 v0, 0x1

    .line 2331
    :cond_0
    if-nez v0, :cond_1

    .line 2333
    iget-object v0, p0, Landroid/support/v7/widget/gw;->a:Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/widget/gw;->b:Landroid/support/v7/view/menu/s;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/gw;->b(Landroid/support/v7/view/menu/o;Landroid/support/v7/view/menu/s;)Z

    .line 2336
    :cond_1
    return-void

    .line 2322
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2353
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/an;)Z
    .locals 1

    .prologue
    .line 2344
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/o;Landroid/support/v7/view/menu/s;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2358
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->t()V

    .line 2359
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 2360
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2362
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/s;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    .line 2363
    iput-object p2, p0, Landroid/support/v7/widget/gw;->b:Landroid/support/v7/view/menu/s;

    .line 2364
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2365
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->u()Landroid/support/v7/widget/gx;

    move-result-object v0

    .line 2366
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget v2, v2, Landroid/support/v7/widget/Toolbar;->c:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/gx;->a:I

    .line 2367
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/gx;->b:I

    .line 2368
    iget-object v1, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2369
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2372
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->w()V

    .line 2373
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2374
    invoke-virtual {p2, v3}, Landroid/support/v7/view/menu/s;->e(Z)V

    .line 2376
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/d;

    if-eqz v0, :cond_2

    .line 2377
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/d;

    invoke-interface {v0}, Landroid/support/v7/view/d;->a()V

    .line 2380
    :cond_2
    return v3
.end method

.method public b()I
    .locals 1

    .prologue
    .line 2405
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/view/menu/o;Landroid/support/v7/view/menu/s;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2387
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/d;

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/d;

    invoke-interface {v0}, Landroid/support/v7/view/d;->b()V

    .line 2391
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2392
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2393
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    .line 2395
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->x()V

    .line 2396
    iput-object v2, p0, Landroid/support/v7/widget/gw;->b:Landroid/support/v7/view/menu/s;

    .line 2397
    iget-object v0, p0, Landroid/support/v7/widget/gw;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2398
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/s;->e(Z)V

    .line 2400
    const/4 v0, 0x1

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2410
    const/4 v0, 0x0

    return-object v0
.end method
