public class CodeCoverageWrapper {

    public class ApexClassOrTrigger {
        public Attributes attributes {get;set;} 
        public String Name {get;set;} 

        public ApexClassOrTrigger(JSONParser parser) {
            while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                        if (text == 'attributes') {
                            attributes = new Attributes(parser);
                        } else if (text == 'Name') {
                            Name = parser.getText();
                        } else {
                            System.debug(LoggingLevel.WARN, 'ApexClassOrTrigger consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public Integer size {get;set;} 
    public Integer totalSize {get;set;} 
    public Boolean done {get;set;} 
    public Object queryLocator {get;set;} 
    public String entityTypeName {get;set;} 
    public List<Records> records {get;set;} 

    public CodeCoverageWrapper(JSONParser parser) {
        while (parser.nextToken() != System.JSONToken.END_OBJECT) {
            if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                String text = parser.getText();
                if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                    if (text == 'size') {
                        size = parser.getIntegerValue();
                    } else if (text == 'totalSize') {
                        totalSize = parser.getIntegerValue();
                    } else if (text == 'done') {
                        done = parser.getBooleanValue();
                    } else if (text == 'queryLocator') {
                        queryLocator = parser.readValueAs(Object.class);
                    } else if (text == 'entityTypeName') {
                        entityTypeName = parser.getText();
                    } else if (text == 'records') {
                        records = arrayOfRecords(parser);
                    } else {
                        System.debug(LoggingLevel.WARN, 'CodeCoverageWrapper consuming unrecognized property: '+text);
                        consumeObject(parser);
                    }
                }
            }
        }
    }
    
    public class Coverage_X {
        public List<Integer> coveredLines {get;set;} 
        public List<CoveredLines> uncoveredLines {get;set;} 

        public Coverage_X(JSONParser parser) {
            while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                        if (text == 'coveredLines') {
                            coveredLines = arrayOfInteger(parser);
                        } else if (text == 'uncoveredLines') {
                            uncoveredLines = arrayOfCoveredLines(parser);
                        } else {
                            System.debug(LoggingLevel.WARN, 'Coverage_X consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public class Coverage_Y {
        public List<CoveredLines> coveredLines {get;set;} 
        public List<Integer> uncoveredLines {get;set;} 

        public Coverage_Y(JSONParser parser) {
            while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                        if (text == 'coveredLines') {
                            coveredLines = arrayOfCoveredLines(parser);
                        } else if (text == 'uncoveredLines') {
                            uncoveredLines = arrayOfInteger(parser);
                        } else {
                            System.debug(LoggingLevel.WARN, 'Coverage_Y consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public class Coverage_Z {
        public List<CoveredLines> coveredLines {get;set;} 
        public List<CoveredLines> uncoveredLines {get;set;} 

        public Coverage_Z(JSONParser parser) {
            while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                        if (text == 'coveredLines') {
                            coveredLines = arrayOfCoveredLines(parser);
                        } else if (text == 'uncoveredLines') {
                            uncoveredLines = arrayOfCoveredLines(parser);
                        } else {
                            System.debug(LoggingLevel.WARN, 'Coverage_Z consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public class Attributes {
        public String type_Z {get;set;} // in json: type
        public String url {get;set;} 

        public Attributes(JSONParser parser) {
            while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                        if (text == 'type') {
                            type_Z = parser.getText();
                        } else if (text == 'url') {
                            url = parser.getText();
                        } else {
                            System.debug(LoggingLevel.WARN, 'Attributes consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public class Coverage {
        public List<Integer> coveredLines {get;set;} 
        public List<Integer> uncoveredLines {get;set;} 

        public Coverage(JSONParser parser) {
            while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                        if (text == 'coveredLines') {
                            coveredLines = arrayOfInteger(parser);
                        } else if (text == 'uncoveredLines') {
                            uncoveredLines = arrayOfInteger(parser);
                        } else {
                            System.debug(LoggingLevel.WARN, 'Coverage consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public class CoveredLines {

        public CoveredLines(JSONParser parser) {
            while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                        {
                            System.debug(LoggingLevel.WARN, 'CoveredLines consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public class Records {
        public Attributes attributes {get;set;} 
        public Integer NumLinesCovered {get;set;} 
        public String ApexClassOrTriggerId {get;set;} 
        public ApexClassOrTrigger ApexClassOrTrigger {get;set;} 
        public Integer NumLinesUncovered {get;set;} 
        public Coverage Coverage {get;set;} 

        public Records(JSONParser parser) {
            while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
                    String text = parser.getText();
                    if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
                        if (text == 'attributes') {
                            attributes = new Attributes(parser);
                        } else if (text == 'NumLinesCovered') {
                            NumLinesCovered = parser.getIntegerValue();
                        } else if (text == 'ApexClassOrTriggerId') {
                            ApexClassOrTriggerId = parser.getText();
                        } else if (text == 'ApexClassOrTrigger') {
                            ApexClassOrTrigger = new ApexClassOrTrigger(parser);
                        } else if (text == 'NumLinesUncovered') {
                            NumLinesUncovered = parser.getIntegerValue();
                        } else if (text == 'Coverage') {
                            Coverage = new Coverage(parser);
                        } else {
                            System.debug(LoggingLevel.WARN, 'Records consuming unrecognized property: '+text);
                            consumeObject(parser);
                        }
                    }
                }
            }
        }
    }
    
    public static CodeCoverageWrapper parse(String json) {
        System.JSONParser parser = System.JSON.createParser(json);
        return new CodeCoverageWrapper(parser);
    }
    
    public static void consumeObject(System.JSONParser parser) {
        Integer depth = 0;
        do {
            System.JSONToken curr = parser.getCurrentToken();
            if (curr == System.JSONToken.START_OBJECT || 
                curr == System.JSONToken.START_ARRAY) {
                depth++;
            } else if (curr == System.JSONToken.END_OBJECT ||
                curr == System.JSONToken.END_ARRAY) {
                depth--;
            }
        } while (depth > 0 && parser.nextToken() != null);
    }
    
    private static List<Integer> arrayOfInteger(System.JSONParser p) {
        List<Integer> res = new List<Integer>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(p.getIntegerValue());
        }
        return res;
    }

    private static List<Records> arrayOfRecords(System.JSONParser p) {
        List<Records> res = new List<Records>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Records(p));
        }
        return res;
    }

    private static List<CoveredLines> arrayOfCoveredLines(System.JSONParser p) {
        List<CoveredLines> res = new List<CoveredLines>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new CoveredLines(p));
        }
        return res;
    }

}