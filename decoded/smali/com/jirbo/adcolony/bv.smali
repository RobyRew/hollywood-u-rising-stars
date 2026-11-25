.class Lcom/jirbo/adcolony/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/bv;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/bv;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/jirbo/adcolony/bv;->a:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method a()Lcom/jirbo/adcolony/h;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    .line 35
    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lcom/jirbo/adcolony/bv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "skipped_plays"

    iget v2, p0, Lcom/jirbo/adcolony/bv;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 37
    const-string/jumbo v1, "play_order_index"

    iget v2, p0, Lcom/jirbo/adcolony/bv;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 38
    return-object v0
.end method

.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 2

    .prologue
    .line 25
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 26
    :cond_0
    const-string/jumbo v0, "uuid"

    const-string/jumbo v1, "error"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/bv;->a:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "skipped_plays"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/bv;->b:I

    .line 28
    const-string/jumbo v0, "play_order_index"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/bv;->c:I

    .line 29
    const/4 v0, 0x1

    goto :goto_0
.end method
