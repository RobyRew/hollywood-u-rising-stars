.class Lcom/jirbo/adcolony/de;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1360
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1366
    :goto_0
    return v0

    .line 1362
    :cond_0
    iput v0, p0, Lcom/jirbo/adcolony/de;->a:I

    .line 1363
    iput v0, p0, Lcom/jirbo/adcolony/de;->b:I

    .line 1364
    iput v0, p0, Lcom/jirbo/adcolony/de;->c:I

    .line 1366
    const/4 v0, 0x1

    goto :goto_0
.end method
