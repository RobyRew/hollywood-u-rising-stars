.class Lcom/jirbo/adcolony/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/jirbo/adcolony/du;

.field m:Lcom/jirbo/adcolony/dp;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1572
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v2, p0, Lcom/jirbo/adcolony/ec;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return v0

    .line 1573
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ec;->l:Lcom/jirbo/adcolony/du;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/du;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/jirbo/adcolony/ec;->m:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1580
    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ec;->a:I

    .line 1581
    const-string/jumbo v1, "label_reward"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->b:Ljava/lang/String;

    .line 1582
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ec;->c:I

    .line 1583
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ec;->d:I

    .line 1584
    const-string/jumbo v1, "image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->e:Ljava/lang/String;

    .line 1585
    const-string/jumbo v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->f:Ljava/lang/String;

    .line 1586
    const-string/jumbo v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->g:Ljava/lang/String;

    .line 1587
    const-string/jumbo v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->h:Ljava/lang/String;

    .line 1588
    const-string/jumbo v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->i:Ljava/lang/String;

    .line 1589
    const-string/jumbo v1, "label_fraction"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->j:Ljava/lang/String;

    .line 1590
    const-string/jumbo v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->k:Ljava/lang/String;

    .line 1592
    new-instance v1, Lcom/jirbo/adcolony/du;

    invoke-direct {v1}, Lcom/jirbo/adcolony/du;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->l:Lcom/jirbo/adcolony/du;

    .line 1593
    iget-object v1, p0, Lcom/jirbo/adcolony/ec;->l:Lcom/jirbo/adcolony/du;

    const-string/jumbo v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/du;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return v0

    .line 1595
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/dp;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dp;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ec;->m:Lcom/jirbo/adcolony/dp;

    .line 1596
    iget-object v1, p0, Lcom/jirbo/adcolony/ec;->m:Lcom/jirbo/adcolony/dp;

    const-string/jumbo v2, "option_done"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dp;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1603
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v1, p0, Lcom/jirbo/adcolony/ec;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ec;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/jirbo/adcolony/ec;->l:Lcom/jirbo/adcolony/du;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/du;->b()V

    .line 1605
    iget-object v0, p0, Lcom/jirbo/adcolony/ec;->m:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dp;->b()V

    .line 1606
    return-void
.end method
