.class public Lcom/jirbo/adcolony/az;
.super Lcom/jirbo/adcolony/ai;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/jirbo/adcolony/ai;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/jirbo/adcolony/ai;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/jirbo/adcolony/aa;)Lcom/jirbo/adcolony/az;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/jirbo/adcolony/az;->t:Lcom/jirbo/adcolony/aa;

    .line 18
    return-object p0
.end method
