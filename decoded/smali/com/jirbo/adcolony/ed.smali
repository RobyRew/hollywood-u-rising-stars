.class Lcom/jirbo/adcolony/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/jirbo/adcolony/du;

.field d:Lcom/jirbo/adcolony/ec;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1524
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v2, p0, Lcom/jirbo/adcolony/ed;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1527
    :cond_0
    :goto_0
    return v0

    .line 1525
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ed;->c:Lcom/jirbo/adcolony/du;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/du;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    iget-object v1, p0, Lcom/jirbo/adcolony/ed;->d:Lcom/jirbo/adcolony/ec;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ec;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1532
    const-string/jumbo v1, "background_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ed;->a:Ljava/lang/String;

    .line 1533
    const-string/jumbo v1, "background_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ed;->b:Ljava/lang/String;

    .line 1535
    new-instance v1, Lcom/jirbo/adcolony/du;

    invoke-direct {v1}, Lcom/jirbo/adcolony/du;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ed;->c:Lcom/jirbo/adcolony/du;

    .line 1536
    iget-object v1, p0, Lcom/jirbo/adcolony/ed;->c:Lcom/jirbo/adcolony/du;

    const-string/jumbo v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/du;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return v0

    .line 1538
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/ec;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ec;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ed;->d:Lcom/jirbo/adcolony/ec;

    .line 1539
    iget-object v1, p0, Lcom/jirbo/adcolony/ed;->d:Lcom/jirbo/adcolony/ec;

    const-string/jumbo v2, "dialog"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ec;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1546
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v1, p0, Lcom/jirbo/adcolony/ed;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ed;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/jirbo/adcolony/ed;->d:Lcom/jirbo/adcolony/ec;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ec;->b()V

    .line 1548
    return-void
.end method
