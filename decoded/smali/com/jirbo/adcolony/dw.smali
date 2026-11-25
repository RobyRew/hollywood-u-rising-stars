.class Lcom/jirbo/adcolony/dw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1221
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1232
    :goto_0
    return v0

    .line 1223
    :cond_0
    iput v0, p0, Lcom/jirbo/adcolony/dw;->a:I

    .line 1224
    iput v0, p0, Lcom/jirbo/adcolony/dw;->b:I

    .line 1225
    iput v0, p0, Lcom/jirbo/adcolony/dw;->c:I

    .line 1226
    iput v0, p0, Lcom/jirbo/adcolony/dw;->d:I

    .line 1227
    iput v0, p0, Lcom/jirbo/adcolony/dw;->e:I

    .line 1228
    iput v0, p0, Lcom/jirbo/adcolony/dw;->f:I

    .line 1229
    iput v0, p0, Lcom/jirbo/adcolony/dw;->g:I

    .line 1230
    iput v0, p0, Lcom/jirbo/adcolony/dw;->h:I

    .line 1232
    const/4 v0, 0x1

    goto :goto_0
.end method
